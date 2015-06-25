.class final Lcom/avira/android/debug/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/debug/DebuggingPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/debug/DebuggingPreferencesActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/avira/android/debug/i;->a:Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(J)V

    .line 241
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->c()V

    .line 242
    const/4 v0, 0x1

    return v0
.end method
