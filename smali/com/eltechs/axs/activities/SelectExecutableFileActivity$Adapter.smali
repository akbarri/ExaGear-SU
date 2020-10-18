.class Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;
.super Landroid/widget/BaseAdapter;
.source "SelectExecutableFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/SelectExecutableFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field private final commonPathPrefixLength:I

.field private final myViews:[Landroid/view/View;

.field final synthetic this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)V
    .locals 4

    .line 198
    iput-object p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 195
    invoke-virtual {p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->myViews:[Landroid/view/View;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$100(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x2

    .line 200
    new-array v1, v1, [Ljava/util/Collection;

    invoke-static {p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$100(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/collections4/collection/CompositeCollection;->of([Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    .line 202
    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getParentDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->calculateCommonPrefixLength(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->commonPathPrefixLength:I

    return-void
.end method

.method private calculateCommonPrefixLength(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 216
    array-length v3, v0

    sub-int/2addr v3, v2

    .line 218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 221
    array-length v5, v4

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_1

    .line 224
    aget-object v6, v0, v5

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_2
    if-ge v1, v3, :cond_4

    .line 235
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return p1
.end method

.method private generateFileDescription(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)Landroid/text/Spanned;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;)",
            "Landroid/text/Spanned;"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getParentDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget v1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->commonPathPrefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<b>%s</b><br>in %s"

    const/4 v2, 0x2

    .line 326
    new-array v2, v2, [Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 328
    invoke-static {v0}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeHtml4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 326
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method private installMoreLessOptionButtonListener(Landroid/view/View;)V
    .locals 1

    .line 409
    new-instance v0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$5;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$5;-><init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private installSupportedFileButtonListener(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$1;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$1;-><init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V

    .line 352
    new-instance v1, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$2;

    invoke-direct {v1, p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$2;-><init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V

    .line 361
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-virtual {p4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private installUnsupportedFileButtonListener(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile<",
            "TStateClass;>;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 371
    new-instance v0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$3;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$3;-><init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V

    .line 393
    new-instance v1, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;

    invoke-direct {v1, p0, p1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter$4;-><init>(Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)V

    .line 402
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {p4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$200(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$100(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v0}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$100(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 274
    iget-object p2, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->myViews:[Landroid/view/View;

    aget-object p2, p2, p1

    if-eqz p2, :cond_0

    .line 276
    iget-object p2, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->myViews:[Landroid/view/View;

    aget-object p1, p2, p1

    return-object p1

    .line 279
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {p2}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-virtual {v2}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    if-eqz p2, :cond_2

    sget p2, Lcom/eltechs/axs/R$layout;->select_executable_file_elem:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/eltechs/axs/R$layout;->select_executable_file_separator:I

    :goto_1
    invoke-virtual {v2, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 283
    sget p3, Lcom/eltechs/axs/R$id;->sef_file_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 284
    sget v2, Lcom/eltechs/axs/R$id;->sef_file_description:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 285
    sget v3, Lcom/eltechs/axs/R$id;->sef_show_configuration_menu:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 287
    iget-object v4, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v4}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 290
    iget-object p3, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {p3}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$200(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget p3, Lcom/eltechs/axs/R$string;->hide_files:I

    goto :goto_2

    :cond_3
    sget p3, Lcom/eltechs/axs/R$string;->more_files:I

    :goto_2
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 291
    invoke-direct {p0, p2}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->installMoreLessOptionButtonListener(Landroid/view/View;)V

    .line 293
    iget-object p3, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {p3}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {p3}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$100(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    move v0, v1

    .line 294
    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 295
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 298
    :cond_5
    iget-object v4, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v4}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_6

    move v0, v1

    :cond_6
    if-eqz v0, :cond_7

    .line 300
    iget-object v1, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    .line 301
    invoke-static {v1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    .line 302
    invoke-static {v4}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$100(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->this$0:Lcom/eltechs/axs/activities/SelectExecutableFileActivity;

    invoke-static {v5}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity;->access$000(Lcom/eltechs/axs/activities/SelectExecutableFileActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, p1, v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;

    .line 304
    :goto_3
    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    invoke-direct {p0, v1}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->generateFileDescription(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_8

    .line 309
    invoke-direct {p0, v1, p3, p2, v3}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->installSupportedFileButtonListener(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 312
    invoke-virtual {v1, v0}, Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;->setUserSelectedCustomizationPackage(Lcom/eltechs/axs/payments/PurchasableComponent;)V

    .line 313
    invoke-direct {p0, v1, p3, p2, v3}, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->installUnsupportedFileButtonListener(Lcom/eltechs/axs/configuration/startup/DetectedExecutableFile;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 317
    :goto_4
    iget-object p3, p0, Lcom/eltechs/axs/activities/SelectExecutableFileActivity$Adapter;->myViews:[Landroid/view/View;

    aput-object p2, p3, p1

    return-object p2
.end method
