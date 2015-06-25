.class public final Lcom/avira/android/idsafeguard/c/f;
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

.field private final b:Lcom/avira/android/idsafeguard/b/g;


# direct methods
.method public constructor <init>(Lcom/avira/android/idsafeguard/b/g;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/avira/android/idsafeguard/c/f;->b:Lcom/avira/android/idsafeguard/b/g;

    .line 39
    invoke-interface {p1}, Lcom/avira/android/idsafeguard/b/g;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 102
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    .line 50
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f080263

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final a(Lcom/avira/android/idsafeguard/a/e;)V
    .locals 4

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/avira/android/idsafeguard/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/avira/android/idsafeguard/a/e;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    sget-object v1, Lcom/avira/android/idsafeguard/c/b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/avira/android/idsafeguard/a/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/l;
    .locals 2
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
    .line 77
    new-instance v0, Lcom/avira/android/idsafeguard/database/a/c;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/avira/android/idsafeguard/database/a/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/l;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 25
    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/f;->b:Lcom/avira/android/idsafeguard/b/g;

    invoke-interface {v0, p2}, Lcom/avira/android/idsafeguard/b/g;->a(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

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
    .line 91
    iget-object v0, p0, Lcom/avira/android/idsafeguard/c/f;->b:Lcom/avira/android/idsafeguard/b/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avira/android/idsafeguard/b/g;->a(Landroid/database/Cursor;)V

    .line 93
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 94
    return-void
.end method
