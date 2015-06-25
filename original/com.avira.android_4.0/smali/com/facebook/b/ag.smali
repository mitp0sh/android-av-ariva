.class final Lcom/facebook/b/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field a:Ljava/net/URI;

.field b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    .line 302
    iput-object p2, p0, Lcom/facebook/b/ag;->b:Ljava/lang/Object;

    .line 303
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 317
    .line 319
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/facebook/b/ag;

    if-eqz v1, :cond_0

    .line 320
    check-cast p1, Lcom/facebook/b/ag;

    .line 321
    iget-object v1, p1, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/facebook/b/ag;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/b/ag;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 324
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x431

    .line 310
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/facebook/b/ag;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    return v0
.end method
