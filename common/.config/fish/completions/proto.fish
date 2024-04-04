complete -c proto -n "__fish_use_subcommand" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_use_subcommand" -s h -l help -d 'Print help'
complete -c proto -n "__fish_use_subcommand" -s V -l version -d 'Print version'
complete -c proto -n "__fish_use_subcommand" -f -a "alias" -d 'Add an alias to a tool.'
complete -c proto -n "__fish_use_subcommand" -f -a "bin" -d 'Display the absolute path to a tools executable.'
complete -c proto -n "__fish_use_subcommand" -f -a "clean" -d 'Clean the ~/.proto directory by removing stale tools, plugins, and files.'
complete -c proto -n "__fish_use_subcommand" -f -a "completions" -d 'Generate command completions for your current shell.'
complete -c proto -n "__fish_use_subcommand" -f -a "debug" -d 'Debug the current proto environment.'
complete -c proto -n "__fish_use_subcommand" -f -a "install" -d 'Download and install a tool.'
complete -c proto -n "__fish_use_subcommand" -f -a "list" -d 'List installed versions for a tool.'
complete -c proto -n "__fish_use_subcommand" -f -a "list-remote" -d 'List available versions for a tool.'
complete -c proto -n "__fish_use_subcommand" -f -a "migrate" -d 'Migrate breaking changes for the proto installation.'
complete -c proto -n "__fish_use_subcommand" -f -a "outdated" -d 'Check if configured tool versions are out of date.'
complete -c proto -n "__fish_use_subcommand" -f -a "pin" -d 'Pin a global or local version of a tool.'
complete -c proto -n "__fish_use_subcommand" -f -a "plugin" -d 'Operations for managing tool plugins.'
complete -c proto -n "__fish_use_subcommand" -f -a "regen" -d 'Regenerate shims and optionally relink bins.'
complete -c proto -n "__fish_use_subcommand" -f -a "run" -d 'Run a tool after detecting a version from the environment.'
complete -c proto -n "__fish_use_subcommand" -f -a "setup" -d 'Setup proto for your current shell by injecting exports and updating PATH.'
complete -c proto -n "__fish_use_subcommand" -f -a "unalias" -d 'Remove an alias from a tool.'
complete -c proto -n "__fish_use_subcommand" -f -a "uninstall" -d 'Uninstall a tool.'
complete -c proto -n "__fish_use_subcommand" -f -a "upgrade" -d 'Upgrade proto to the latest version.'
complete -c proto -n "__fish_use_subcommand" -f -a "use" -d 'Download and install all tools from .prototools.'
complete -c proto -n "__fish_seen_subcommand_from alias" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from alias" -l global -d 'Add to the global .prototools instead of local .prototools'
complete -c proto -n "__fish_seen_subcommand_from alias" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from alias" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from bin" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from bin" -l bin -d 'Display symlinked binary path when available'
complete -c proto -n "__fish_seen_subcommand_from bin" -l shim -d 'Display shim path when available'
complete -c proto -n "__fish_seen_subcommand_from bin" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from bin" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from clean" -l days -d 'Clean tools and plugins older than the specified number of days' -r
complete -c proto -n "__fish_seen_subcommand_from clean" -l purge -d 'Purge and delete the installed tool by ID' -r
complete -c proto -n "__fish_seen_subcommand_from clean" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from clean" -l purge-plugins -d 'Purge and delete all installed plugins'
complete -c proto -n "__fish_seen_subcommand_from clean" -l yes -d 'Avoid and force confirm prompts'
complete -c proto -n "__fish_seen_subcommand_from clean" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from clean" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from completions" -l shell -d 'Shell to generate for' -r -f -a "{bash	'',elvish	'',fish	'',powershell	'',zsh	''}"
complete -c proto -n "__fish_seen_subcommand_from completions" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from completions" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from completions" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from config; and not __fish_seen_subcommand_from env" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from config; and not __fish_seen_subcommand_from env" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from config; and not __fish_seen_subcommand_from env" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from config; and not __fish_seen_subcommand_from env" -f -a "config" -d 'Debug all loaded .prototools config\'s for the current directory.'
complete -c proto -n "__fish_seen_subcommand_from debug; and not __fish_seen_subcommand_from config; and not __fish_seen_subcommand_from env" -f -a "env" -d 'Debug the current proto environment and store.'
complete -c proto -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from config" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from config" -l json -d 'Print the list in JSON format'
complete -c proto -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from config" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from config" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from env" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from env" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from debug; and __fish_seen_subcommand_from env" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from install" -l pin -d 'Pin the resolved version' -r -f -a "{global	'',local	''}"
complete -c proto -n "__fish_seen_subcommand_from install" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from install" -l canary -d 'Install a canary (nightly, etc) version'
complete -c proto -n "__fish_seen_subcommand_from install" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from install" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from list" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from list" -l aliases -d 'Include local aliases in the output'
complete -c proto -n "__fish_seen_subcommand_from list" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from list" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from list-remote" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from list-remote" -l aliases -d 'Include remote aliases in the output'
complete -c proto -n "__fish_seen_subcommand_from list-remote" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from list-remote" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from migrate" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from migrate" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from migrate" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from outdated" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from outdated" -l include-global -d 'Include versions in global .prototools'
complete -c proto -n "__fish_seen_subcommand_from outdated" -l json -d 'Print the list in JSON format'
complete -c proto -n "__fish_seen_subcommand_from outdated" -l latest -d 'Check for latest available version ignoring requirements and ranges'
complete -c proto -n "__fish_seen_subcommand_from outdated" -l only-local -d 'Only check versions in local .prototools'
complete -c proto -n "__fish_seen_subcommand_from outdated" -l update -d 'Update and write the versions to the local .prototools'
complete -c proto -n "__fish_seen_subcommand_from outdated" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from outdated" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from pin" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from pin" -l global -d 'Pin to the global .prototools instead of local .prototools'
complete -c proto -n "__fish_seen_subcommand_from pin" -l resolve -d 'Resolve the version before pinning'
complete -c proto -n "__fish_seen_subcommand_from pin" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from pin" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from plugin; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from remove" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from plugin; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from remove" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from plugin; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from remove" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from plugin; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from remove" -f -a "add" -d 'Add a plugin to manage a tool.'
complete -c proto -n "__fish_seen_subcommand_from plugin; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from remove" -f -a "info" -d 'Display information about a plugin and its inventory.'
complete -c proto -n "__fish_seen_subcommand_from plugin; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from remove" -f -a "list" -d 'List all configured and built-in plugins, and optionally include inventory.'
complete -c proto -n "__fish_seen_subcommand_from plugin; and not __fish_seen_subcommand_from add; and not __fish_seen_subcommand_from info; and not __fish_seen_subcommand_from list; and not __fish_seen_subcommand_from remove" -f -a "remove" -d 'Remove a plugin and unmanage a tool.'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from add" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from add" -l global -d 'Add to the global .prototools instead of local .prototools'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from add" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from add" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from info" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from info" -l json -d 'Print the info in JSON format'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from info" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from info" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from list" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from list" -l aliases -d 'Include resolved aliases in the output'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from list" -l json -d 'Print the list in JSON format'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from list" -l versions -d 'Include installed versions in the output'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from list" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from remove" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from remove" -l global -d 'Remove from the global .prototools instead of local .prototools'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from remove" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from plugin; and __fish_seen_subcommand_from remove" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from regen" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from regen" -l bin -d 'Also recreate binary symlinks'
complete -c proto -n "__fish_seen_subcommand_from regen" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from regen" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from run" -l alt -d 'Name of an alternate (secondary) binary to run' -r
complete -c proto -n "__fish_seen_subcommand_from run" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from run" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from run" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from setup" -l shell -d 'Shell to setup for' -r -f -a "{bash	'',elvish	'',fish	'',powershell	'',zsh	''}"
complete -c proto -n "__fish_seen_subcommand_from setup" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from setup" -l no-profile -d 'Don\'t update a shell profile'
complete -c proto -n "__fish_seen_subcommand_from setup" -l profile -d 'Return the shell profile path if setup'
complete -c proto -n "__fish_seen_subcommand_from setup" -s y -l yes -d 'Avoid interactive prompts and use defaults'
complete -c proto -n "__fish_seen_subcommand_from setup" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from setup" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from unalias" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from unalias" -l global -d 'Remove from the global .prototools instead of local .prototools'
complete -c proto -n "__fish_seen_subcommand_from unalias" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from unalias" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from uninstall" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from uninstall" -l yes -d 'Avoid and force confirm prompts'
complete -c proto -n "__fish_seen_subcommand_from uninstall" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c proto -n "__fish_seen_subcommand_from uninstall" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from upgrade" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from upgrade" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from upgrade" -s V -l version -d 'Print version'
complete -c proto -n "__fish_seen_subcommand_from use" -l log -d 'Lowest log level to output' -r -f -a "{off	'',error	'',warn	'',info	'',debug	'',trace	''}"
complete -c proto -n "__fish_seen_subcommand_from use" -s h -l help -d 'Print help'
complete -c proto -n "__fish_seen_subcommand_from use" -s V -l version -d 'Print version'
