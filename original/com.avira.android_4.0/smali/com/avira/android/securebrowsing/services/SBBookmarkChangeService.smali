.class public Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final CHROME_BOOKMARK_URI:Landroid/net/Uri;

.field private static final CHROME_HISTORY_URI:Landroid/net/Uri;

.field private static final CUSTOM_BOOKMARK_URI:Landroid/net/Uri;

.field private static final CUSTOM_HISTORY_URI:Landroid/net/Uri;

.field private static final DEFAULT_HISTORY_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private a:Landroid/database/ContentObserver;

.field private b:Landroid/database/ContentObserver;

.field private c:Landroid/database/ContentObserver;

.field private d:Landroid/database/ContentObserver;

.field private e:Landroid/database/ContentObserver;

.field private f:Ljava/util/concurrent/Semaphore;

.field private g:Ljava/util/concurrent/Semaphore;

.field private h:Ljava/util/concurrent/Semaphore;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.android.chrome.browser/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CHROME_HISTORY_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.android.chrome.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CHROME_BOOKMARK_URI:Landroid/net/Uri;

    .line 29
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->DEFAULT_HISTORY_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.sec.android.app.sbrowser.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CUSTOM_BOOKMARK_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.sec.android.app.sbrowser.browser/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CUSTOM_HISTORY_URI:Landroid/net/Uri;

    .line 40
    const-class v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->i:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->j:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->a:Landroid/database/ContentObserver;

    .line 35
    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->b:Landroid/database/ContentObserver;

    .line 36
    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c:Landroid/database/ContentObserver;

    .line 37
    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d:Landroid/database/ContentObserver;

    .line 38
    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e:Landroid/database/ContentObserver;

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/database/ContentObserver;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 216
    new-instance v6, Lcom/avira/android/securebrowsing/services/a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v0, p1}, Lcom/avira/android/securebrowsing/services/a;-><init>(Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 260
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->DEFAULT_HISTORY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic f()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CUSTOM_HISTORY_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 112
    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->i:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 94
    sput-object p1, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->i:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 151
    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->k:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 133
    sput-object p1, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->k:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 190
    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->j:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 172
    sput-object p1, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->j:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->g:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    const-string v1, "BookmarkChangeService - onBind"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    const-string v1, "BookmarkChangeService - onCreate"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/avira/android/securebrowsing/c/t;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->l:Z

    .line 63
    iget-boolean v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->l:Z

    .line 68
    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CHROME_HISTORY_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->a(Landroid/net/Uri;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->a:Landroid/database/ContentObserver;

    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CHROME_BOOKMARK_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->a(Landroid/net/Uri;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->b:Landroid/database/ContentObserver;

    .line 69
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avira/android/securebrowsing/services/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/avira/android/securebrowsing/services/b;-><init>(Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c:Landroid/database/ContentObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->DEFAULT_HISTORY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    const-string v1, "setCustomBookmarkContentObserver - enter"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/avira/android/securebrowsing/services/c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/avira/android/securebrowsing/services/c;-><init>(Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d:Landroid/database/ContentObserver;

    :cond_1
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CUSTOM_BOOKMARK_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    iget-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    const-string v1, "setCustomHistoryContentObserver - enter"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/avira/android/securebrowsing/services/d;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/avira/android/securebrowsing/services/d;-><init>(Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e:Landroid/database/ContentObserver;

    :cond_2
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->CUSTOM_HISTORY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->f:Ljava/util/concurrent/Semaphore;

    .line 74
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->g:Ljava/util/concurrent/Semaphore;

    .line 75
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->h:Ljava/util/concurrent/Semaphore;

    .line 78
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->a(Ljava/lang/String;)V

    .line 79
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c(Ljava/lang/String;)V

    .line 80
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->b(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    const-string v1, "BookmarkChangeService - onDestroy"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 443
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 444
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 445
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 446
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 447
    invoke-static {}, Lcom/avira/android/securebrowsing/c/t;->e()V

    .line 448
    iput-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->a:Landroid/database/ContentObserver;

    .line 449
    iput-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->b:Landroid/database/ContentObserver;

    .line 450
    iput-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->c:Landroid/database/ContentObserver;

    .line 451
    iput-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->d:Landroid/database/ContentObserver;

    .line 452
    iput-object v2, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->e:Landroid/database/ContentObserver;

    .line 453
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->stopSelf()V

    .line 454
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 459
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->TAG:Ljava/lang/String;

    const-string v1, "BookmarkChangeService - onStartCommand"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 462
    iget-boolean v0, p0, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->l:Z

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;->stopSelf()V

    .line 467
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
