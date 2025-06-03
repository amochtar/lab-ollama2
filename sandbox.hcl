resource "network" "main" {
  subnet = "10.0.5.0/24"
}

resource "container" "ubuntu" {
  image {
    name = "ubuntu"
  }

  network {
    id = resource.network.main.meta.id
  }

  resources {
    cpu    = 2000
    memory = 4096
  }
}

resource "exec" "setup" {
  target = resource.container.ubuntu
  script = <<-EOF
apt-get update
apt-get install -y curl vim
EOF
}
