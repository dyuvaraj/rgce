<div>
@props(['placeholder' => 'Select Options', 'id'])

<select id="{{ $id }}" class="select2" multiple="multiple" data-placeholder="{{ $placeholder }}">
    {{ $slot }}
</select>



@push('scripts')

<script>

    $(function() {

        $('#{{ $id }}').select2({
            theme: 'bootstrap4',
        }).on('change', function() {
            @this.set('{{ $attributes->whereStartsWith('wire:model')->first() }}', $(this).val());
        });

    });

</script>

@endpush
</div>
