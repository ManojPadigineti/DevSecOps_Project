run () {
    for instances in $@ 
      do
         ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inv.txt playbook.yml -e var_file=$run -e role_name=$run
      done
}

run $@