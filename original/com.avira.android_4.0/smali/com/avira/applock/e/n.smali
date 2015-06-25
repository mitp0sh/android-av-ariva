.class public final Lcom/avira/applock/e/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/avira/applock/activities/SettingsActivity;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/avira/applock/activities/SettingsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/applock/e/n;->b:Z

    .line 42
    iget-boolean v0, p0, Lcom/avira/applock/e/n;->b:Z

    iput-boolean v0, p0, Lcom/avira/applock/e/n;->c:Z

    .line 43
    iget-object v0, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    iget-boolean v1, p0, Lcom/avira/applock/e/n;->b:Z

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/SettingsActivity;->a(Z)V

    .line 46
    iget-object v0, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    iget-object v1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    invoke-static {v1}, Lcom/avira/applock/d/b;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/SettingsActivity;->b(Z)V

    .line 47
    iget-object v0, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    iget-object v1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    invoke-static {v1}, Lcom/avira/applock/d/b;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/SettingsActivity;->c(Z)V

    .line 48
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/avira/applock/e/n;->c:Z

    .line 86
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    iget-boolean v1, p0, Lcom/avira/applock/e/n;->c:Z

    invoke-static {v0, v1}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Z)V

    .line 59
    iget-boolean v0, p0, Lcom/avira/applock/e/n;->c:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avira/applock/service/AppLockerService;->a(Landroid/content/Context;Z)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    invoke-static {v0}, Lcom/avira/applock/service/AppLockerService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/avira/applock/e/n;->b:Z

    iget-boolean v1, p0, Lcom/avira/applock/e/n;->c:Z

    if-eq v0, v1, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    const-string v1, "extra_applock_feature_switch_new_state"

    iget-boolean v2, p0, Lcom/avira/applock/e/n;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/avira/applock/activities/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    const-class v2, Lcom/avira/applock/activities/CreatePinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_create_pin_screen_mode"

    sget-object v2, Lcom/avira/applock/activities/d;->CHANGE_PIN:Lcom/avira/applock/activities/d;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    const-class v2, Lcom/avira/applock/activities/CreatePasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_create_pass_screen_mode"

    sget-object v2, Lcom/avira/applock/activities/b;->CHANGE_PASSWORD:Lcom/avira/applock/activities/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/n;->a:Lcom/avira/applock/activities/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
