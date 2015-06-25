.class final Lcom/facebook/b/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    iput-object p1, p0, Lcom/facebook/b/bp;->a:Ljava/lang/String;

    .line 1379
    iput-object p2, p0, Lcom/facebook/b/bp;->b:Ljava/lang/String;

    .line 1380
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/facebook/b/bp;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/b/bp;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/b/an;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-void
.end method
