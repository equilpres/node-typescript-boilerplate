// @ts-check

import eslint from '@eslint/js';
import prettier from 'eslint-config-prettier';
import globals from 'globals';
import tseslint from 'typescript-eslint';

export default tseslint.config(
	eslint.configs.recommended, //
	...tseslint.configs.strict,
	prettier,
	{
		languageOptions: {
			globals: globals.node,
		},
	},
	{
		ignores: ['build'],
	},
);
