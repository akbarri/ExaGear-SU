.class Lcom/google/tagmanager/DebugResolvedRuleBuilder;
.super Ljava/lang/Object;
.source "DebugResolvedRuleBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedRuleBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;
    }
.end annotation


# instance fields
.field addMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field addTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field removeMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field removeTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    .line 28
    new-instance p1, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->getMutableAddMacrosList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    .line 30
    new-instance p1, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->getMutableRemoveMacrosList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    .line 32
    new-instance p1, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->getMutableAddTagsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    .line 34
    new-instance p1, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->getMutableRemoveTagsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;Ljava/util/List;)V

    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-void
.end method

.method public static translateExpandedFunctionCall(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 4

    .line 78
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v2

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->setKey(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v1}, Lcom/google/tagmanager/DebugValueBuilder;->copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->setValue(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    .line 83
    invoke-virtual {v0, v2}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->addProperties(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 2

    .line 40
    new-instance v0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->addNegativePredicates()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)V

    return-object v0
.end method

.method public createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 2

    .line 45
    new-instance v0, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->addPositivePredicates()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)V

    return-object v0
.end method

.method public getAddedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public getAddedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public getRemovedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public getRemovedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    invoke-static {p1}, Lcom/google/tagmanager/DebugValueBuilder;->copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;->setResult(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedRule;

    return-void
.end method
