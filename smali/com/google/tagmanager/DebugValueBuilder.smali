.class Lcom/google/tagmanager/DebugValueBuilder;
.super Ljava/lang/Object;
.source "DebugValueBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ValueBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DebugValueBuilder$TypeMismatchException;
    }
.end annotation


# instance fields
.field private value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;


# direct methods
.method public constructor <init>(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-void
.end method

.method public static copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 28
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mergeFrom([B)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Failed to copy runtime value into debug value"

    .line 31
    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private validateType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/tagmanager/DebugValueBuilder$TypeMismatchException;

    invoke-direct {p1, p3, p2}, Lcom/google/tagmanager/DebugValueBuilder$TypeMismatchException;-><init>(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .locals 3

    .line 71
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MACRO_REFERENCE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v1

    const-string v2, "set macro evaluation extension"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    sget-object v2, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;->macro:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v1, v2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMutableExtension(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/google/tagmanager/protobuf/MutableMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/DebugMacroEvaluationInfoBuilder;-><init>(Lcom/google/analytics/containertag/proto/MutableDebug$MacroEvaluationInfo;)V

    return-object v0
.end method

.method public getListItem(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    .line 39
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->LIST:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v1

    const-string v2, "add new list item"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1, p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getListItem(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)V

    return-object v0
.end method

.method public getMapKey(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    .line 47
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MAP:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v1

    const-string v2, "add new map key"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1, p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapKey(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)V

    return-object v0
.end method

.method public getMapValue(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    .line 55
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->MAP:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v1

    const-string v2, "add new map value"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1, p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getMapValue(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)V

    return-object v0
.end method

.method public getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 3

    .line 63
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;->TEMPLATE:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;

    move-result-object v1

    const-string v2, "add template token"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/tagmanager/DebugValueBuilder;->validateType(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value$Type;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/google/tagmanager/DebugValueBuilder;

    iget-object v1, p0, Lcom/google/tagmanager/DebugValueBuilder;->value:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v1, p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/tagmanager/DebugValueBuilder;-><init>(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)V

    return-object v0
.end method
