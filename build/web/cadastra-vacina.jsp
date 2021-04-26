<div class="container">
    <!-- Contact Section Heading-->
    <h5 class="page-section-heading text-center text-uppercase text-secondary mb-0">Cadastrar Vacina</h5>
    <!-- Icon Divider-->
    <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
        <div class="divider-custom-line"></div>
    </div>
    <!-- Contact Section Form-->
    <div class="row">
        <div class="col-lg-12 mx-auto">
            
            <form method="post" action="VacinaServlet">
                <div class="form-group">
                    
                    <input class="form-control" name="id" type="text" placeholder="ID" required="required" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? grupo.id : ''}" />
                </div>
                <div class="form-group">
                    
                    <input class="form-control" name="nome" type="text" placeholder="Nome" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? grupo.nome : ''}" />
                </div>
              
                <div class="form-group">
                    
                    <input class="form-control" name="fabricante" type="text" placeholder="Fabricante" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? grupo.fabricante : ''}" />
                </div>                
                <div class="form-group form-button">
                    <input class="form-control" name="tempoEntreAplicacoes" type="text" placeholder="Tempo Entre Aplicações" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? grupo.tempoEntreAplicacoes : ''}" />
                </div>
                <div class="form-group form-button">
                    <input class="form-control" name="quantidadeAplicacoes" type="text" placeholder="Quantidade De Aplicações" value="${ (param.redirect != null && param['redirect'] eq 'atualiza') ? grupo.quantidadeAplicacoes : ''}" />
                </div>
                <input type="hidden" name="${(param.redirect != null && param.redirect eq 'atualiza') ? 'atualizar' : 'cadastrar' }" value="1"/>
                <div class="form-group"><button class="btn btn-primary btn-lg btn-block" id="sendMessageButton" type="submit">Enviar</button></div>
            </form>
        </div>
    </div>
</div>