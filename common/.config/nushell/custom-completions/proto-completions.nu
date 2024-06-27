module completions {

  def "nu-complete proto log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # A multi-language version manager, a unified toolchain.
  export extern proto [
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto alias log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Add an alias to a tool.
  export extern "proto alias" [
    id: string                # ID of tool
    alias: string             # Alias name
    spec: string              # Version or alias to associate with
    --global                  # Add to the global ~/.proto/.prototools instead of local ./.prototools
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto alias log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto bin log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Display the absolute path to a tools executable.
  export extern "proto bin" [
    id: string                # ID of tool
    --bin                     # Display symlinked binary path when available
    spec?: string             # Version or alias of tool
    --shim                    # Display shim path when available
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto bin log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto clean log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Clean the ~/.proto directory by removing stale tools, plugins, and files.
  export extern "proto clean" [
    --days: string            # Clean tools and plugins older than the specified number of days
    --purge: string           # Purge and delete the installed tool by ID
    --purge-plugins           # Purge and delete all installed plugins
    --yes                     # Avoid and force confirm prompts
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto clean log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto completions log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Generate command completions for your current shell.
  export extern "proto completions" [
    --shell: string           # Shell to generate for
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto completions log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto debug log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Debug the current proto environment.
  export extern "proto debug" [
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto debug log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto debug config log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Debug all loaded .prototools config's for the current directory.
  export extern "proto debug config" [
    --json                    # Print the list in JSON format
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto debug config log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto debug env log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Debug the current proto environment and store.
  export extern "proto debug env" [
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto debug env log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto diagnose log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Diagnose potential issues with your proto installation.
  export extern "proto diagnose" [
    --shell: string           # Shell to diagnose for
    --json                    # Print the diagnosis in JSON format
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto diagnose log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto install pin" [] {
    [ "global" "local" ]
  }

  def "nu-complete proto install log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Download and install a tool.
  export extern "proto install" [
    id: string                # ID of tool
    spec?: string             # Version or alias of tool
    --canary                  # Install a canary (nightly, etc) version
    --pin: string@"nu-complete proto install pin" # Pin the resolved version to .prototools
    ...passthrough: string    # Unique arguments to pass to each tool
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto install log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto list log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # List installed versions for a tool.
  export extern "proto list" [
    id: string                # ID of tool
    --aliases                 # Include local aliases in the output
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto list log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto list-remote log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # List available versions for a tool.
  export extern "proto list-remote" [
    id: string                # ID of tool
    --aliases                 # Include remote aliases in the output
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto list-remote log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto migrate log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Migrate breaking changes for the proto installation.
  export extern "proto migrate" [
    operation: string         # Operation to migrate
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto migrate log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto outdated log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Check if configured tool versions are out of date.
  export extern "proto outdated" [
    --include-global          # Include versions from global ~/.proto/.prototools
    --json                    # Print the outdated tools in JSON format
    --latest                  # When updating versions, use the latest version instead of newest
    --only-local              # Only check versions in local ./.prototools
    --update                  # Update and write the versions to their respective configuration
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto outdated log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto pin log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Pin a global or local version of a tool.
  export extern "proto pin" [
    id: string                # ID of tool
    spec: string              # Version or alias of tool
    --global                  # Pin to the global ~/.proto/.prototools instead of local ./.prototools
    --resolve                 # Resolve the version before pinning
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto pin log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto plugin log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Operations for managing tool plugins.
  export extern "proto plugin" [
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto plugin log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto plugin add log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Add a plugin to manage a tool.
  export extern "proto plugin add" [
    id: string                # ID of plugin
    plugin: string            # Locator string to find and load the plugin
    --global                  # Add to the global ~/.proto/.prototools instead of local ./.prototools
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto plugin add log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto plugin info log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Display information about an installed plugin and its inventory.
  export extern "proto plugin info" [
    id: string                # ID of plugin
    --json                    # Print the info in JSON format
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto plugin info log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto plugin list log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # List all configured and built-in plugins, and optionally include inventory.
  export extern "proto plugin list" [
    ...ids: string            # ID of plugins to list
    --aliases                 # Include resolved aliases in the output
    --json                    # Print the list in JSON format
    --versions                # Include installed versions in the output
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto plugin list log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto plugin remove log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Remove a plugin and unmanage a tool.
  export extern "proto plugin remove" [
    id: string                # ID of plugin
    --global                  # Remove from the global ~/.proto/.prototools instead of local ./.prototools
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto plugin remove log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto plugin search log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Search for available plugins provided by the community.
  export extern "proto plugin search" [
    query: string             # Query to search available plugins
    --json                    # Print the plugins in JSON format
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto plugin search log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto regen log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Regenerate shims and optionally relink bins.
  export extern "proto regen" [
    --bin                     # Also recreate binary symlinks
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto regen log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto run log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Run a tool after detecting a version from the environment.
  export extern "proto run" [
    id: string                # ID of tool
    spec?: string             # Version or alias of tool
    --alt: string             # Name of an alternate (secondary) binary to run
    ...passthrough: string    # Arguments to pass through to the underlying command
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto run log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto setup log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Setup proto for your current shell by injecting exports and updating PATH.
  export extern "proto setup" [
    --shell: string           # Shell to setup for
    --no-modify-profile       # Don't update a shell profile
    --no-modify-path          # Don't update the system path
    --yes(-y)                 # Avoid interactive prompts and use defaults
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto setup log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto status log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # List all configured tools and their current installation status.
  export extern "proto status" [
    --include-global          # Include versions from global ~/.proto/.prototools
    --json                    # Print the active tools in JSON format
    --only-local              # Only check versions in local ./.prototools
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto status log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto unalias log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Remove an alias from a tool.
  export extern "proto unalias" [
    id: string                # ID of tool
    alias: string             # Alias name
    --global                  # Remove from the global ~/.proto/.prototools instead of local ./.prototools
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto unalias log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto uninstall log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Uninstall a tool.
  export extern "proto uninstall" [
    id: string                # ID of tool
    spec?: string             # Version or alias of tool
    --yes                     # Avoid and force confirm prompts
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto uninstall log" # Lowest log level to output
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  def "nu-complete proto unpin log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Unpin a global or local version of a tool.
  export extern "proto unpin" [
    id: string                # ID of tool
    --global                  # Unpin from the global ~/.proto/.prototools instead of local ./.prototools
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto unpin log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto upgrade log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Upgrade proto to the latest version.
  export extern "proto upgrade" [
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto upgrade log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

  def "nu-complete proto use log" [] {
    [ "off" "error" "warn" "info" "debug" "trace" ]
  }

  # Download and install all tools from loaded .prototools.
  export extern "proto use" [
    --dump                    # Dump a trace profile to the working directory
    --log: string@"nu-complete proto use log" # Lowest log level to output
    --help(-h)                # Print help
    --version(-V)             # Print version
  ]

}

export use completions *
