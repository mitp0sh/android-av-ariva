.class final Lcom/avira/android/securebrowsing/services/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;


# direct methods
.method constructor <init>(Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/avira/android/securebrowsing/services/b;->a:Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default Bookmark change Triggered - onChange(boolean selfChange)"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avira/android/securebrowsing/services/b;->onChange(ZLandroid/net/Uri;)V

    .line 299
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 4

    .prologue
    .line 305
    invoke-static {}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/ae;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default Bookmark change Triggered - onChange(boolean selfChange)\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/b;->a:Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/b;->a:Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;

    invoke-virtual {v1, v0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->a()Lcom/avira/android/securebrowsing/c/ab;

    move-result-object v0

    sget-object v1, Lcom/avira/android/securebrowsing/c/v;->DEFAULT_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    invoke-static {}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/ab;->a(Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Similar Default URL detected."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
