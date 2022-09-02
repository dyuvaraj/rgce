<div>
<script>
            tinymce.init({
                selector: '#content',
                setup: function (editor) {
                    editor.on('init change', function () {
                        editor.save();
                    });
                    editor.on('change', function (e) {
                        @this.set('description', editor.getContent());
                    });
                }
            });
        </script>

    <textarea class="form-control" name="" id="content" wire:model="description"></textarea>



        



</div>