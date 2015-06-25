.class public final Lcom/avira/android/idsafeguard/c/c;
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

.field private final b:Lcom/avira/android/idsafeguard/b/d;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/avira/android/idsafeguard/database/a;


# direct methods
.method public constructor <init>(Lcom/avira/android/idsafeguard/b/d;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/avira/android/idsafeguard/c/c;->b:Lcom/avira/android/idsafeguard/b/d;

    .line 45
    invoke-interface {p1}, Lcom/avira/android/idsafeguard/b/d;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    .line 46
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->c:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/avira/android/idsafeguard/database/a;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avira/android/idsafeguard/database/a;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->d:Lcom/avira/android/idsafeguard/database/a;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->d:Lcom/avira/android/idsafeguard/database/a;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/database/a;->a(Ljava/lang/String;)I

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v2, "emails"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    sget-object v1, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->d:Lcom/avira/android/idsafeguard/database/a;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avira/android/idsafeguard/database/a;->c(Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "emails"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    sget-object v1, Lcom/avira/android/idsafeguard/services/ISDismissalIntentService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
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
    .line 80
    new-instance v0, Lcom/avira/android/idsafeguard/database/a/a;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/database/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/l;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 29
    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->b:Lcom/avira/android/idsafeguard/b/d;

    invoke-interface {v0, p2}, Lcom/avira/android/idsafeguard/b/d;->a(Landroid/database/Cursor;)V

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
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/c;->b:Lcom/avira/android/idsafeguard/b/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avira/android/idsafeguard/b/d;->a(Landroid/database/Cursor;)V

    .line 93
    return-void
.end method
