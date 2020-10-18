.class Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;
.super Ljava/lang/Object;
.source "AnnotationDrivenRequestDispatcherConfigurer.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->configureParameterReader(Ljava/lang/reflect/Method;[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;I)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

.field final synthetic val$handlerMethod:Ljava/lang/reflect/Method;

.field final synthetic val$parameterDescriptors:[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;Ljava/lang/reflect/Method;[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->this$0:Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

    iput-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->val$handlerMethod:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->val$parameterDescriptors:[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findNamedParameter(Ljava/lang/String;)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->this$0:Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

    iget-object v1, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->val$parameterDescriptors:[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    invoke-static {v0, v1, p1}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->access$000(Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Ljava/lang/String;)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getHandlerMethodName()Ljava/lang/String;
    .locals 4

    const-string v0, "%s::%s()"

    const/4 v1, 0x2

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->val$handlerMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->val$handlerMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(I)Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->val$parameterDescriptors:[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParametersCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer$1;->val$parameterDescriptors:[Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;

    array-length v0, v0

    return v0
.end method
