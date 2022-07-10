local config = {

    cmd = {

        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xms1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens",
        "java.base/java.util=ALL-UNNAMED",
        "--add-opens",
        "java.base/java.lang=ALL-UNNAMED",
        "-javaagent:/Users/frederik/.local/share/nvim/lsp_servers/jdtls/lombok.jar",
        "-Xbootclasspath/a:/Users/frederik/.local/share/nvim/lsp_servers/jdtls/lombok.jar",
        "-jar",
        "/Users/frederik/.local/share/nvim/lsp_servers/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
        "-configuration",
        "/Users/frederik/.local/share/nvim/lsp_servers/jdtls/config_mac",
        "-data",
        "/Users/frederik/.local/share/nvim/lsp_servers/jdtls/workspace/"
        
    },
    root_dir = require("jdtls.setup").find_root({
        ".git", "mvnw", "gradlew" }),
    settings = {

        java = {
        }
    },
    init_options = {

        bundles = {
        }
    }
}
require("jdtls").start_or_attach(config)
