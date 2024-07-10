import process from 'node:process';
import path from 'path';
import * as esbuild from 'esbuild';
const cwd = process.cwd();
const src = path.join(cwd, 'src');
const dist = path.join(cwd, 'dist');

await esbuild.build({
  entryPoints: ['flexible_filter.js'],
  outdir: dist,
  absWorkingDir: src,
  // jsx: 'transform',
  // jsxFactory: 'h',
  bundle: true,
  allowOverwrite: true,
});
