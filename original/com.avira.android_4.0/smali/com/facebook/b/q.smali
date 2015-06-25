.class final Lcom/facebook/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/io/File;

.field final synthetic b:Lcom/facebook/b/o;


# direct methods
.method constructor <init>(Lcom/facebook/b/o;[Ljava/io/File;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/facebook/b/q;->b:Lcom/facebook/b/o;

    iput-object p2, p0, Lcom/facebook/b/q;->a:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/facebook/b/q;->a:[Ljava/io/File;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 232
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method
