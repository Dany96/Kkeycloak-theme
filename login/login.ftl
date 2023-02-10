<#import "template.ftl" as layout>
  <@layout.registrationLayout displayInfo=false displayMessage=false; section>
    <#if section="title">
      <#elseif section="form">
        <#if realm.password>
          <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
            <div class="container">
              <div class="card login-card">
                <div class="row no-gutters">
                  <div class="col-md-5">
                    <img alt="login" class="login-card-img">
                  </div>
                  <div class="col-md-7">
                    <div class="card-body">
                      <div class="brand-wrapper">
                        <img alt="logo" class="logo">
                      </div>
                      <#if message?has_content>
                        <div id="login-alert" class="alert alert-danger col-sm-12">
                          <span class="kc-feedback-text">
                            ${kcSanitize(message.summary)?no_esc}
                          </span>
                        </div>
                      </#if>
                      <p class="login-card-description">Secretaría Nacional de Planificación</p>
                      <p>Sistema Integrado de Planificación e Inversión Pública</p>
                      <form onsubmit="login.disabled = true; return true;" action="${url.loginAction?keep_after('^[^#]*?://.*?[^/]*', 'r')}" method="post">
                        <div class="form-group">
                          <select class="form-control" style="height:50px" id="entidad" onchange="selected(this.value)">
                            <option value=0 selected disabled hidden>Tipo de Entidad</option>
                            <option value=1>ENTIDAD EXTERNA</option>
                            <option value=2>ENTIDAD INTERNA</option>
                          </select>
                        </div>

                        <div id="interna">
                          <div class="form-group">
                            <label class="sr-only">USARIO</label>
                            <input nbel="Default select example" class="form-control" placeholder="Usuario" id="username" name="username">
                          </div>
                          <div class="form-group mb-4">
                            <label for="password" class="sr-only">CONTRASEÑA</label>
                            <input type="password" name="password" class="form-control" placeholder="***********" aria-label="Recipient's username" aria-describedby="basic-addon2">
                          </div>
                        </div>

                        <div id="externa" style="display:none">
                          <div class="form-group">
                            <label class="sr-only">RUC</label>
                            <input nbel="Default select example" class="form-control" placeholder="Ruc" name="ruc" value="${(login.ruc!'')}">
                          </div>
                          <div class="form-group">
                            <label class="sr-only">USUARIO</label>
                            <input nbel="Default select example" class="form-control" placeholder="Usuario" name="usuario" value="${(login.usuario!'')}">
                          </div>
                        
                          <div class="form-group mb-4">
                            <label for="password" class="sr-only">CONTRASEÑA</label>
                            <input type="password" name="password" class="form-control" placeholder="***********" aria-describedby="basic-addon2">
                          </div>
                        </div>

                        <input name="login" id="login" class="btn btn-block login-btn mb-4" type="submit" value="Iniciar Sesión">
                      </form>
                      <a href="#!" class="forgot-password-link">Olvide mi Contraseña?</a>
                      <nav class="login-card-footer-nav">
                        <img alt="fotter" class="fotter">
                      </nav>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </main>
        </#if>
    </#if>
  </@layout.registrationLayout>