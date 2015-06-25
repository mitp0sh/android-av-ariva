.class public final Lcom/avira/applock/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORGOT_PIN_THRESHOLD:I = 0x3


# instance fields
.field private a:Lcom/avira/applock/activities/LockScreenActivity;

.field private b:Landroid/content/Intent;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/avira/applock/activities/LockScreenActivity;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/e/i;->c:I

    .line 33
    iput-object p1, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/e/i;->b:Landroid/content/Intent;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    sget-object v1, Lcom/avira/applock/activities/f;->ENTER_PIN:Lcom/avira/applock/activities/f;

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/LockScreenActivity;->a(Lcom/avira/applock/activities/f;)V

    .line 45
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    invoke-static {v0, p1}, Lcom/avira/applock/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->c(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/LockScreenActivity;->finish()V

    .line 81
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    sget-object v1, Lcom/avira/applock/activities/f;->ENTER_PIN:Lcom/avira/applock/activities/f;

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/LockScreenActivity;->a(Lcom/avira/applock/activities/f;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/e/i;->c:I

    .line 54
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    iget-object v1, p0, Lcom/avira/applock/e/i;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    const-class v2, Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    sget v1, Lcom/avira/applock/f;->applock_screen_wrong_pin:I

    invoke-static {v0, v1}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;I)V

    .line 99
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/LockScreenActivity;->c()V

    .line 102
    iget v0, p0, Lcom/avira/applock/e/i;->c:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 105
    iget v0, p0, Lcom/avira/applock/e/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avira/applock/e/i;->c:I

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/e/i;->a:Lcom/avira/applock/activities/LockScreenActivity;

    sget-object v1, Lcom/avira/applock/activities/f;->FORGOT_PIN:Lcom/avira/applock/activities/f;

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/LockScreenActivity;->a(Lcom/avira/applock/activities/f;)V

    goto :goto_0
.end method
