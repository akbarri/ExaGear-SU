.class public final enum Lcom/google/tagmanager/protobuf/WireFormat$JavaType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/tagmanager/protobuf/WireFormat$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum BOOLEAN:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum BYTE_STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum DOUBLE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum FLOAT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

.field public static final enum STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 50
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 51
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "LONG"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 52
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "FLOAT"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 53
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "DOUBLE"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 54
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "BOOLEAN"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 55
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "STRING"

    const-string v3, ""

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 56
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "BYTE_STRING"

    sget-object v3, Lcom/google/tagmanager/protobuf/ByteString;->EMPTY:Lcom/google/tagmanager/protobuf/ByteString;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 57
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "ENUM"

    const/4 v3, 0x0

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    .line 58
    new-instance v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const-string v1, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v3}, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    const/16 v0, 0x9

    .line 49
    new-array v0, v0, [Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->INT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->LONG:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/WireFormat$JavaType;
    .locals 1

    .line 49
    const-class v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    return-object p0
.end method

.method public static values()[Lcom/google/tagmanager/protobuf/WireFormat$JavaType;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    invoke-virtual {v0}, [Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    return-object v0
.end method


# virtual methods
.method getDefaultDefault()Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-object v0
.end method
