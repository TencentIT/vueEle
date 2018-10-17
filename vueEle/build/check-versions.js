//定制控制台日志的输入样式
var chalk = require('chalk')
  // 加载语义化版本测试库
var semver = require('semver')
  // 引入package.json文件
var packageConfig = require('../package.json')
function exec(cmd) {
  // require('child_process')调用nodejs子进程，
  // execSync同步的exec方法执行command
  return require('child_process').execSync(cmd).toString().trim()
}
var versionRequirements = [{
  name: 'node',
  // process.version是当前使用的node版本信息'v7.1.0'
  // semver.clean('  =v1.2.3   ')返回'1.2.3'
  // semver.clean(process.version)格式化返回当前使用的node版本信息'7.1.0'
  currentVersion: semver.clean(process.version),
  // 从package.json读取node版本要求
  versionRequirement: packageConfig.engines.node
}, {
  name: 'npm',
  currentVersion: exec('npm --version'),
  // 从package.json读取npm版本要求
  versionRequirement: packageConfig.engines.npm
}]
module.exports = function() {
  var warnings = []
  for (var i = 0; i < versionRequirements.length; i++) {
    var mod = versionRequirements[i]
      // 判断现有版本是否满足要求
    if (!semver.satisfies(mod.currentVersion, mod.versionRequirement)) {
      warnings.push(mod.name + ': ' +
        chalk.red(mod.currentVersion) + ' should be ' +
        chalk.green(mod.versionRequirement)
      )
    }
  }
  // 打印错误信息
  if (warnings.length) {
    console.log('')
    console.log(chalk.yellow('To use this template, you must update following to modules:'))
    console.log()
    for (var i = 0; i < warnings.length; i++) {
      var warning = warnings[i]
      console.log('  ' + warning)
    }
    console.log()
    // 按照linux的规范，一般成功用0表示，而非0则表示失败。存在不满足版本要求的模块，执行失败
    process.exit(1)
  }
}