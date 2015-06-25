.class final Lcom/facebook/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/facebook/c/f;


# direct methods
.method constructor <init>(Lcom/facebook/c/f;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/facebook/c/g;->b:Lcom/facebook/c/f;

    iput-object p2, p0, Lcom/facebook/c/g;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 604
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/c/g;->a:Ljava/lang/Class;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 614
    const-class v0, Lcom/facebook/c/i;

    return-object v0
.end method
