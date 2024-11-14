source "file" "example" {
    content = "Learning Packer can be pretty interesting!"
}

build {
  source "source.file.example" {
    target = "./An-Important-Message.txt"
  }

  post-processor "shell-local" {
    inline = ["echo 'Please check the important message!'"]
  }
}
