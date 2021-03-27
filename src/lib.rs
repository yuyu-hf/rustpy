use pyo3::prelude::*;
use pyo3::wrap_pyfunction;


#[pyfunction]
fn add(x1: i32, x2: i32) -> PyResult<i32> {
    Ok(x1+x2)
}

#[pymodule]
fn rustpy(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_function(wrap_pyfunction!(add, m)?)?;
    Ok(())
}
