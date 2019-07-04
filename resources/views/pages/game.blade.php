@extends("layouts.master")
@section('title', 'Rozgrywka')
@section('content')
    <div class="card mx-auto" style="width: 700px; margin-top: 50px;">
    @if(session('message'))
    <div class="alert alert-success">{{ session('message') }}</div>
    @endif
        <div class="card-header">
            Rozgrywka
        </div>
        <div class="card-body">
            <form method="POST" action="{{ route('pages.game') }}">
                @csrf
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="choice" id="choice1" value="papier" checked>
                    <label class="form-check-label" for="exampleRadios1">
                        Papier 
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="choice" id="choice2" value="kamień">
                    <label class="form-check-label" for="exampleRadios2">
                        Kamień
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="choice" id="choice3" value="nożyczki">
                    <label class="form-check-label" for="exampleRadios3">
                        Nożyczki
                    </label><br>
                </div>
                <input type="submit" value="Zagraj i zapisz wynik">
            </form>
          <div class="alert alert-success" style="margin-top: 20px;">
              @if(isset($choiceUser) && isset($choiceComputer) && isset($whoWon))
                <p>Ruch użytkownika: {{ $choiceUser }}</p>
                <p>Ruch komputera: {{ $choiceComputer }}</p>
                <p>Wygrał: {{ $whoWon }}.</p>
              @endif
          </div>
        </div>
</div>
@endsection