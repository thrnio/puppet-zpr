class zpr::params inherits zpr{

  # User configuration
  $user  = pick($globals_user, 'zpr_proxy')
  $group = pick($globals_group, $user)
  $home  = pick($globals_home, '/var/lib/zpr')
  $uid   = pick($globals_uid, '50555')
  $gid   = pick($globals_gid, $uid)

  # Tag configurations. Useful for collecting tags on workers
  $user_tag     = pick($globals_user_tag, $user)
  $storage_tag  = pick($globals_storage_tag, 'storage')
  $worker_tag   = pick($globals_worker_tag, 'worker')
  $readonly_tag = pick($globals_readonly_tag, 'readonly')
  $env_tag      = $globals_env_tag
  $source_user  = $globals_source_user
  $sanity_check = $globals_sanity_check

  $backup_dir   = pick($globals_backup_dir, '/srv/backup')

  # For manual public key placement
  $pub_key  = $globals_pub_key
  $key_name = pick($globals_key_name, "${pub_key}_default")

  $tsp_pkg_name = pick($globals_tsp_pkg_name, 'task-spooler')

  # AWS access keys
  $aws_key_file   = pick($globals_aws_key_file, '.aws')
  $aws_access_key = $globals_aws_access_key
  $aws_secret_key = $globals_aws_secret_key

  # GPG key data
  $gpg_passphrase = $globals_gpg_passphrase
  $gpg_key_grip   = $globals_gpg_key_grip
}
