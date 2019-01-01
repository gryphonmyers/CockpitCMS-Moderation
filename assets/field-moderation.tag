<field-moderation class="field-moderation-field">
  <select ref="input" bind="{ opts.bind }">
    <option selected="{ parent.root.$value === opts.bind.value }" value="Unpublished">Unpublished</option>
    <option selected="{ parent.root.$value === opts.bind.value }" value="Draft">Draft</option>
    <option selected="{ parent.root.$value === opts.bind.value }" value="Published">Published</option>
  </select>
  <script>

    var $this = this;

    this.on('mount', function() {
      if (document.querySelector('.uk-moderation-element')) {
        document.querySelector('.field-moderation-field').closest(".uk-panel").parentNode.classList.add('uk-hidden');
      }
      this.update();
    });

    this.$updateValue = function(value) {
      this.update();
    }.bind(this);

  </script>
</field-moderation>
