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
    var sorted = json_data.sort(function(a,b) {
      return b[checkedBoxes()] - a[checkedBoxes()];
    });
    $(".all-links").html(JST["templates/links"]({ sorted }))
  };

  $.getJSON("links.json", function(links_json) {
    var checkboxForm = $(".checkbox-form")
    checkboxForm.find(":checkbox").on("click", renderLinks.bind(null, links_json))
  });
});
