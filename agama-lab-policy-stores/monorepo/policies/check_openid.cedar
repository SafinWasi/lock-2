permit(
  principal,
  action,
  resource
) when {
  context has tokens
  && context.tokens has jans_access_token
  && context.tokens.jans_access_token.hasTag("scope")
  && context.tokens.jans_access_token.getTag("scope").contains("openid")
};