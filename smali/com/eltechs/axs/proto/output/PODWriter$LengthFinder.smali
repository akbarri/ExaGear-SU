.class final Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;
.super Ljava/lang/Object;
.source "PODWriter.java"

# interfaces
.implements Lcom/eltechs/axs/proto/output/PODVisitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/proto/output/PODWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LengthFinder"
.end annotation


# instance fields
.field private size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eltechs/axs/proto/output/PODWriter$1;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    return p0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 122
    iget p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 125
    iget p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    goto :goto_0

    .line 126
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 128
    iget p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    goto :goto_0

    .line 129
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 131
    iget p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    goto :goto_0

    .line 132
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 134
    iget v0, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->size:I

    goto :goto_0

    :cond_4
    const-string v0, "Unsupported POD member type %s."

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
