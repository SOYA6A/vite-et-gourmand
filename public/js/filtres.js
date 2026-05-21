// Mise à jour du label prix en temps réel
document.getElementById('filtre-prix').addEventListener('input', function() {
  document.getElementById('prix-label').textContent = this.value + '€';
});

function filtrerMenus() {
  const prixMax = parseInt(document.getElementById('filtre-prix').value);
  const theme = document.getElementById('filtre-theme').value;
  const regime = document.getElementById('filtre-regime').value;
  const personnes = parseInt(document.getElementById('filtre-personnes').value) || 0;

  const cards = document.querySelectorAll('.menu-card');
  let nbVisible = 0;

  cards.forEach(card => {
    const prix = parseInt(card.dataset.prix);
    const cardTheme = card.dataset.theme;
    const cardRegime = card.dataset.regime;
    const cardPersonnes = parseInt(card.dataset.personnes);

    const okPrix = prix <= prixMax;
    const okTheme = theme === '' || cardTheme === theme;
    const okRegime = regime === '' || cardRegime === regime;
    const okPersonnes = personnes === 0 || cardPersonnes >= personnes;

    if (okPrix && okTheme && okRegime && okPersonnes) {
      card.style.display = 'block';
      nbVisible++;
    } else {
      card.style.display = 'none';
    }
  });

  document.getElementById('aucun-resultat').style.display = nbVisible === 0 ? 'block' : 'none';
}

function resetFiltres() {
  document.getElementById('filtre-prix').value = 500;
  document.getElementById('prix-label').textContent = '500€';
  document.getElementById('filtre-theme').value = '';
  document.getElementById('filtre-regime').value = '';
  document.getElementById('filtre-personnes').value = '';

  document.querySelectorAll('.menu-card').forEach(card => {
    card.style.display = 'block';
  });

  document.getElementById('aucun-resultat').style.display = 'none';
}