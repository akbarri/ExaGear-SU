.class Lcom/google/tagmanager/NoopResolvedRuleBuilder;
.super Ljava/lang/Object;
.source "NoopResolvedRuleBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedRuleBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 1

    .line 16
    new-instance v0, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;-><init>()V

    return-object v0
.end method

.method public createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 1

    .line 21
    new-instance v0, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopResolvedFunctionCallBuilder;-><init>()V

    return-object v0
.end method

.method public getAddedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 26
    new-instance v0, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;-><init>(Lcom/google/tagmanager/NoopResolvedRuleBuilder;)V

    return-object v0
.end method

.method public getAddedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;-><init>(Lcom/google/tagmanager/NoopResolvedRuleBuilder;)V

    return-object v0
.end method

.method public getRemovedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 31
    new-instance v0, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;-><init>(Lcom/google/tagmanager/NoopResolvedRuleBuilder;)V

    return-object v0
.end method

.method public getRemovedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 41
    new-instance v0, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/NoopResolvedRuleBuilder$NoopResolvedFunctionCallTranslatorList;-><init>(Lcom/google/tagmanager/NoopResolvedRuleBuilder;)V

    return-object v0
.end method

.method public setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 0

    return-void
.end method
