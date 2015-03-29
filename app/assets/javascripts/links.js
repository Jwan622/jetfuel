$(document).ready(function() {
  var checkboxForm = $(".checkbox-form")

  function checkedBoxes() {
    var filter = ""
    checkboxForm.find(":checked").each(function(box) {
      var checked = $(this)
      filter = (checked.data("attribute"));
    });
    return filter;
  };

  function renderLinks(json_data) {
    var checkedValue = checkedBoxes();
    debugger
    if (checkedValue === "created_at") {
      json_data.sort(function(a,b) {
        return Date.parse(b[checkedValue]) - Date.parse(a[checkedValue])
      });
    }
    else if (checkedValue === "clicks") {
      json_data.sort(function(a,b) {
        return b[checkedValue] - a[checkedValue]
      });
    };
    $(".all-links").html(JST["templates/links"]({ sorted: json_data }))
  };

  if ($(".all-links").length > 0) {
    $.getJSON("links.json", function(links_json) {
      renderLinks(links_json);
      checkboxForm.find(":checkbox").on("click", renderLinks.bind(null, links_json))
    });
  };
});
