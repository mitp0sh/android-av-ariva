.class public final Lcom/avira/android/idsafeguard/c/a;
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


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Lcom/avira/android/idsafeguard/b/a;

.field private final c:Lcom/avira/android/idsafeguard/database/a;


# direct methods
.method public constructor <init>(Lcom/avira/android/idsafeguard/b/a;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/avira/android/idsafeguard/c/a;->b:Lcom/avira/android/idsafeguard/b/a;

    .line 39
    invoke-interface {p1}, Lcom/avira/android/idsafeguard/b/a;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    .line 40
    new-instance v0, Lcom/avira/android/idsafeguard/database/a;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avira/android/idsafeguard/database/a;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->c:Lcom/avira/android/idsafeguard/database/a;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    .line 51
    return-void
.end method

.method public final a(Lcom/avira/android/idsafeguard/a/b;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/avira/android/idsafeguard/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/avira/android/idsafeguard/a/b;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/avira/android/idsafeguard/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->d:Ljava/lang/String;

    iget v2, p1, Lcom/avira/android/idsafeguard/a/b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/avira/android/idsafeguard/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->c:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/database/a;->a(Ljava/lang/String;)I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string v2, "emails"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 128
    sget-object v0, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->c:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/idsafeguard/database/a;->a(Ljava/lang/String;I)I

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v1, "com.avira.android.idsafeguard.services.ISDismissalIntentService.email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "com.avira.android.idsafeguard.services.ISDismissalIntentService.breachId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    sget-object v1, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
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
    .line 78
    sget-object v0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/avira/android/idsafeguard/database/a/b;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/a;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v0}, Lcom/avira/android/idsafeguard/database/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/l;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->b:Lcom/avira/android/idsafeguard/b/a;

    invoke-interface {v0, p2}, Lcom/avira/android/idsafeguard/b/a;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final onLoaderReset(Landroid/support/v4/content/l;)V
    .locals 2
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
    .line 92
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/a;->b:Lcom/avira/android/idsafeguard/b/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avira/android/idsafeguard/b/a;->a(Landroid/database/Cursor;)V

    .line 93
    return-void
.end method
