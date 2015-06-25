.class public abstract Lcom/avira/android/debug/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/debug/f;->a:Z

    .line 18
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 19
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/debug/f;->a:Z

    .line 26
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 27
    return-void
.end method
