.class final Lcom/avira/android/antivirus/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/u;

.field final synthetic b:Lcom/avira/android/antivirus/AntivirusSettingsActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/AntivirusSettingsActivity;Lcom/avira/android/antivirus/u;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/avira/android/antivirus/t;->b:Lcom/avira/android/antivirus/AntivirusSettingsActivity;

    iput-object p2, p0, Lcom/avira/android/antivirus/t;->a:Lcom/avira/android/antivirus/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/android/antivirus/t;->a:Lcom/avira/android/antivirus/u;

    invoke-virtual {v0, p2}, Lcom/avira/android/antivirus/u;->a(Z)V

    .line 63
    iget-object v0, p0, Lcom/avira/android/antivirus/t;->b:Lcom/avira/android/antivirus/AntivirusSettingsActivity;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->a(Lcom/avira/android/antivirus/AntivirusSettingsActivity;)V

    .line 65
    iget-object v0, p0, Lcom/avira/android/antivirus/t;->a:Lcom/avira/android/antivirus/u;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->f()Lcom/avira/android/antivirus/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/avira/android/antivirus/t;->a:Lcom/avira/android/antivirus/u;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->f()Lcom/avira/android/antivirus/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->g()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 69
    :cond_0
    return-void
.end method
