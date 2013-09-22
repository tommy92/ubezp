$(document).ready(function() {
	tableActions.init();
});

var tableActions = {
	init: function() {
		tableActions.delegateRow();
	},

	delegateRow: function() {
		$('table').on('click', 'tr[data-url]', function() {
			var $self = $(this),
					rowURL = $self.data('url');

			window.location.href = rowURL;
		});
	}
}