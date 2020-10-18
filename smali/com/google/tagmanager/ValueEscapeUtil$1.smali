.class synthetic Lcom/google/tagmanager/ValueEscapeUtil$1;
.super Ljava/lang/Object;
.source "ValueEscapeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ValueEscapeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$analytics$midtier$proto$containertag$TypeSystem$Value$Escaping:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;->values()[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/tagmanager/ValueEscapeUtil$1;->$SwitchMap$com$google$analytics$midtier$proto$containertag$TypeSystem$Value$Escaping:[I

    :try_start_0
    sget-object v0, Lcom/google/tagmanager/ValueEscapeUtil$1;->$SwitchMap$com$google$analytics$midtier$proto$containertag$TypeSystem$Value$Escaping:[I

    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;->ESCAPE_URI:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
