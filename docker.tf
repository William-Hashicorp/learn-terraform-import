# docker_container.web:
resource "docker_container" "web" {
    command           = [
        "nginx",
        "-g",
        "daemon off;",
    ]
    cpu_shares        = 0
    dns               = []
    dns_opts          = []
    dns_search        = []
    entrypoint        = [
        "/docker-entrypoint.sh",
    ]
    # gateway           = "172.17.0.1"
    group_add         = []
    env = []
    hostname          = "3099fdd5cae4"
    # id                = "3099fdd5cae470bb6c0dcb1af261c7eb4e186cede79168ba38c2f2aea25c4186"
    image             = "sha256:c919045c4c2b0b0007c606e763ed2c830c7b1d038ce878a3c0d6f5b81e6ab80b"
    init              = false
    # ip_address        = "172.17.0.2"
    # ip_prefix_length  = 16
    ipc_mode          = "private"
    # links             = []
    log_driver        = "json-file"
    log_opts          = {}
    max_retry_count   = 0
    memory            = 0
    memory_swap       = 0
    name              = "hashicorp-learn"
/*     network_data      = [
        {
            gateway                   = "172.17.0.1"
            global_ipv6_address       = ""
            global_ipv6_prefix_length = 0
            ip_address                = "172.17.0.2"
            ip_prefix_length          = 16
            ipv6_gateway              = ""
            network_name              = "bridge"
        },
    ] */
    network_mode      = "default"
    privileged        = false
    publish_all_ports = false
    read_only         = false
    restart           = "no"
    rm                = false
    security_opts     = []
    shm_size          = 64
    stdin_open        = false
    storage_opts      = {}
    sysctls           = {}
    tmpfs             = {}
    tty               = false

    ports {
        external = 8081
        internal = 80
        ip       = "0.0.0.0"
        protocol = "tcp"
    }
}
