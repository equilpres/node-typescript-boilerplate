import { register } from 'node:module';
import url from 'node:url';

register('ts-node/esm', url.pathToFileURL('./'));
