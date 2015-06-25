.class final Lcom/avira/android/blacklist/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avira/android/blacklist/b/d;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/b/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/avira/android/blacklist/b/e;->b:Lcom/avira/android/blacklist/b/d;

    iput-object p2, p0, Lcom/avira/android/blacklist/b/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "blacklistTable"

    iget-object v1, p0, Lcom/avira/android/blacklist/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/avira/android/blacklist/b/e;->b:Lcom/avira/android/blacklist/b/d;

    invoke-static {v0}, Lcom/avira/android/blacklist/b/d;->a(Lcom/avira/android/blacklist/b/d;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v0, "blacklistDataStore"

    iget-object v1, p0, Lcom/avira/android/blacklist/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/avira/android/blacklist/b/e;->b:Lcom/avira/android/blacklist/b/d;

    invoke-static {v0}, Lcom/avira/android/blacklist/b/d;->b(Lcom/avira/android/blacklist/b/d;)V

    goto :goto_0
.end method
