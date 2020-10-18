.class public Lcom/google/tagmanager/protobuf/LazyStringArrayList;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/protobuf/LazyStringArrayList$ByteArrayListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/tagmanager/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    new-instance v1, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    invoke-direct {v1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    sput-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)[B
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static asByteArray(Ljava/lang/Object;)[B
    .locals 1

    .line 208
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 209
    check-cast p0, [B

    return-object p0

    .line 210
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 211
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 213
    :cond_1
    check-cast p0, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static asByteString(Ljava/lang/Object;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1

    .line 198
    instance-of v0, p0, Lcom/google/tagmanager/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 199
    check-cast p0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0

    .line 200
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 203
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFrom([B)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 188
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 189
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 190
    :cond_0
    instance-of v0, p0, Lcom/google/tagmanager/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 191
    check-cast p0, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    iget p1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public add(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget p1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public add([B)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget p1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 110
    instance-of v0, p2, Lcom/google/tagmanager/protobuf/LazyStringList;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/tagmanager/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object p2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 113
    iget p2, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAllByteArray(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 127
    iget v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    return p1
.end method

.method public addAllByteString(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 120
    iget v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    return p1
.end method

.method public asByteArrayList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList$ByteArrayListView;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList$ByteArrayListView;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 63
    :cond_0
    instance-of v1, v0, Lcom/google/tagmanager/protobuf/ByteString;

    if-eqz v1, :cond_2

    .line 64
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 65
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 71
    :cond_2
    check-cast v0, [B

    .line 72
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public getByteArray(I)[B
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getByteString(I)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/LazyStringList;)V
    .locals 3

    .line 224
    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 225
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, [B

    .line 229
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 134
    iget v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->modCount:I

    .line 135
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/google/tagmanager/protobuf/ByteString;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(I[B)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
