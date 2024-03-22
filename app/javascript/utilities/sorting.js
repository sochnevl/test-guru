document.addEventListener('turbolinks:load', function() {
  let control = document.querySelector('.sort-by-title')

  if (control) { control.addEventListener('click', sortRowsByTitle) }
})

function sortRowsByTitle() {
  let table = document.querySelector('table')

  // NodeList
  let rows = Array.from(table.querySelectorAll('tr')).slice(1)
  let sortedRows = []

  if (this.querySelector('.octicon-arrow-up').classList.contains('hide')) {
    sortedRows = rows.sort(compareRowsAsc)
    this.querySelector('.octicon-arrow-up').classList.remove('hide')
    this.querySelector('.octicon-arrow-down').classList.add('hide')
  } else {
    sortedRows = rows.sort(compareRowsDesc)
    this.querySelector('.octicon-arrow-up').classList.add('hide')
    this.querySelector('.octicon-arrow-down').classList.remove('hide')
  }

  let tbody = table.querySelector('tbody')
  sortedRows.forEach(row => {
    tbody.appendChild(row)
  })
}

function compareRowsAsc(row1, row2) {
  let testTitle1 = row1.querySelector('td').textContent
  let testTitle2 = row2.querySelector('td').textContent
  if (testTitle1 < testTitle2) { return -1 }
  if (testTitle1 > testTitle2) { return  1 }
  return 0
}

function compareRowsDesc(row1, row2) {
  let testTitle1 = row1.querySelector('td').textContent
  let testTitle2 = row2.querySelector('td').textContent
  if (testTitle1 < testTitle2) { return  1 }
  if (testTitle1 > testTitle2) { return -1 }
  return 0
}
