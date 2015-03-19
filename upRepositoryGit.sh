#!/bin/bash

	for DInt in $(find $SrvDir* -maxdepth 0 -type d );do
		dirLower=$( echo "$DInt" | tr -s  '[:upper:]'  '[:lower:]' )
		echo '------------------------------------------------------------'
		echo 'creating and uploading repository '$dirLower
		echo '------------------------------------------------------------'
		curl -X POST -v -u {user-bitbucket}:{password-bitbucket} -H "Content-Type: application/json"  https://api.bitbucket.org/2.0/repositories/{team-bitbucket}/$dirLower -d '{"scm": "git", "is_private": "true", "fork_policy": "no_public_forks" }'

		cd $DInt

		git remote add origin https://{user-bitbucket}}@bitbucket.org/{team-bitbucket}/$dirLower.git
		git push -u origin --all
		git push -u origin --tags
		
		
		echo ''
		echo ''

		cd ..
	done

