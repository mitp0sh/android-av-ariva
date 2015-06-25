.class public Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final SCHEDULED_SCAN_ISSUED_INTENT:Ljava/lang/String; = "com.avira.android.intent.SCHEDULED_SCAN_ISSUED"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/AntivirusOEActivity;


# direct methods
.method public constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;->a:Lcom/avira/android/antivirus/AntivirusOEActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;->a:Lcom/avira/android/antivirus/AntivirusOEActivity;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a(Lcom/avira/android/antivirus/AntivirusOEActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 82
    return-void
.end method
