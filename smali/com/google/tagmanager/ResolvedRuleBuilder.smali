.class interface abstract Lcom/google/tagmanager/ResolvedRuleBuilder;
.super Ljava/lang/Object;
.source "ResolvedRuleBuilder.java"


# virtual methods
.method public abstract createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
.end method

.method public abstract createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
.end method

.method public abstract getAddedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
.end method

.method public abstract getAddedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
.end method

.method public abstract getRemovedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
.end method

.method public abstract getRemovedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
.end method

.method public abstract setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
.end method
