import Quill from "quill/core";

import htmlEditButton from "../../../src/quill.htmlEditButton";
/* 
import htmlEditButton from "quill-full-html-edit-button";
    ^ In production use this
 */
import Toolbar from "quill/modules/toolbar";
import Snow from "quill/themes/snow";

Quill.register({
  "modules/toolbar": Toolbar,
  "themes/snow": Snow,
});
Quill.register("modules/htmlEditButton", htmlEditButton);

export default Quill;
