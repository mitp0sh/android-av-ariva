.class public final Lcom/avira/android/idsafeguard/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final BREACHED_CONTACTS_COUNT_LOADER:I = 0x1

.field private static final USER_THREATS_COUNT_LOADER:I = 0x2


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Lcom/avira/android/idsafeguard/b/f;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/avira/android/idsafeguard/b/f;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/avira/android/idsafeguard/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/idsafeguard/c/e;-><init>(Lcom/avira/android/idsafeguard/c/d;B)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->d:Landroid/content/BroadcastReceiver;

    .line 51
    invoke-static {}, Lcom/avira/android/idsafeguard/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->c:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    .line 53
    invoke-interface {p1}, Lcom/avira/android/idsafeguard/b/f;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/avira/android/idsafeguard/c/d;)Lcom/avira/android/idsafeguard/b/f;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/avira/android/idsafeguard/services/ISIntentService;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/avira/android/idsafeguard/b/f;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    .line 67
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    .line 68
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    sget-object v1, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/services/ISRecentBreachesIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/activities/ISInformationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avira.android.idsafeguard.ISIntentService.State"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 129
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    invoke-static {}, Lcom/avira/android/idsafeguard/services/ISIntentService;->a()Lcom/avira/android/idsafeguard/services/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/idsafeguard/b/f;->a(Lcom/avira/android/idsafeguard/services/b;)V

    .line 130
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    invoke-static {}, Lcom/avira/android/idsafeguard/services/ISIntentService;->b()Lcom/avira/android/idsafeguard/services/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/idsafeguard/b/f;->a(Lcom/avira/android/idsafeguard/services/a;)V

    .line 131
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 139
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 146
    new-instance v0, Lcom/avira/android/idsafeguard/database/a/a;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/database/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 150
    new-instance v0, Lcom/avira/android/idsafeguard/database/a/d;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/database/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/l;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/support/v4/content/l;->h()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "number_of_contacts"

    invoke-static {v1, v2, v0}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    invoke-interface {v2, v1}, Lcom/avira/android/idsafeguard/b/f;->d(I)V

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    invoke-interface {v2, v0, v1}, Lcom/avira/android/idsafeguard/b/f;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    invoke-interface {v1, v0}, Lcom/avira/android/idsafeguard/b/f;->a(I)V

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/d;->b:Lcom/avira/android/idsafeguard/b/f;

    invoke-interface {v1, v0}, Lcom/avira/android/idsafeguard/b/f;->b(I)V

    goto :goto_0
.end method

.method public final onLoaderReset(Landroid/support/v4/content/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    return-void
.end method
