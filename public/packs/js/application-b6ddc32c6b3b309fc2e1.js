/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/application.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/application.js":
/*!*********************************************!*\
  !*** ./app/javascript/packs/application.js ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /home/neil/Desktop/musings_app/app/javascript/packs/application.js: Unterminated string constant (34:30)\n\n  32 |       }else if(e.keyCode == 67) {\n  33 |         // c key == correct\n> 34 |         $(\".correct-answer-js\"\").removeClass('btn-outline-success');\n     |                               ^\n  35 |         $(\".correct-answer-js\"\").addClass('btn-success');\n  36 |         $(\".correct-answer-js\").click();\n  37 |       }else if(e.keyCode == 73){\n    at Parser._raise (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:776:17)\n    at Parser.raiseWithData (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:769:17)\n    at Parser.raise (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:737:17)\n    at Parser.readString (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:8882:20)\n    at Parser.getTokenFromCode (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:8520:14)\n    at Parser.nextToken (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:8047:12)\n    at Parser.next (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:7977:10)\n    at Parser.parseLiteral (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10886:10)\n    at Parser.parseExprAtom (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10637:21)\n    at Parser.parseExprSubscripts (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10329:23)\n    at Parser.parseUpdate (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10309:21)\n    at Parser.parseMaybeUnary (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10287:23)\n    at Parser.parseExprOps (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10152:23)\n    at Parser.parseMaybeConditional (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10126:23)\n    at Parser.parseMaybeAssign (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10089:21)\n    at /home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10056:39\n    at Parser.allowInAnd (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:11728:12)\n    at Parser.parseMaybeAssignAllowIn (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10056:17)\n    at Parser.parseExprListItem (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:11488:18)\n    at Parser.parseCallExpressionArguments (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10529:22)\n    at Parser.parseCoverCallAndAsyncArrowHead (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10437:29)\n    at Parser.parseSubscript (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10373:19)\n    at Parser.parseSubscripts (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10346:19)\n    at Parser.parseExprSubscripts (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10335:17)\n    at Parser.parseUpdate (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10309:21)\n    at Parser.parseMaybeUnary (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10287:23)\n    at Parser.parseExprOps (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10152:23)\n    at Parser.parseMaybeConditional (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10126:23)\n    at Parser.parseMaybeAssign (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10089:21)\n    at Parser.parseExpressionBase (/home/neil/Desktop/musings_app/node_modules/@babel/parser/lib/index.js:10034:23)");

/***/ })

/******/ });
//# sourceMappingURL=application-b6ddc32c6b3b309fc2e1.js.map