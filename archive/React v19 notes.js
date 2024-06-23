// React v19 major changes

// # No more useEffect:
// old:
function Person() {
  // 2. set in state
  const [person, setPerson] = useState(null)

  // 1. fetch in useEffect
  useEffect(() => {
    getPerson().then((data) => setPerson(data))
  }, [])

  if (!person) return <h1>Loading...</h1>
  // 3. display in UI
  return <h1>{person.name}</h1>
}

async function getPerson() {
  const response = await fetch('https://jdk.com/api/people/1')
  return response.json()
}

// new v19:
function Person() {
  // 1. resolve with use()
  const person = use(getPerson())
  // 3. when ready, display data in UI
  return <h1>{person.name}</h1>
}

function App() {
  return (
    // 2. show fallback
    <Suspense fallback={<h1>Loading...</h1>}>
      <Person />
    </Suspense>
  )
}

async function getPerson() {
  const response = await fetch('https://jdk.com/api/people/1')
  return response.json()
}

// ===============================
// useOptimistic()
