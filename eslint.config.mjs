import globals from 'globals';
import pluginJs from '@eslint/js';
import stylistic from '@stylistic/eslint-plugin';

export default [
  {
    languageOptions: {
      globals: {
        ...globals.browser,
      },
    },
  },
  pluginJs.configs.recommended,
  stylistic.configs.customize({
    'indent': 2,
    'quotes': 'single',
    'semi': true,
    'jsx': false,
    'function-call-argument-newline': 'consistent',
  }),
];
