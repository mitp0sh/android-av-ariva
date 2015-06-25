.class Lcom/crashlytics/android/Crashlytics$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/crashlytics/android/Crashlytics$5;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics$5;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$5$3;->this$1:Lcom/crashlytics/android/Crashlytics$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1014
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$5$3;->this$1:Lcom/crashlytics/android/Crashlytics$5;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics$5;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setShouldSendUserReportsWithoutPrompting(Z)V

    .line 1015
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$5$3;->this$1:Lcom/crashlytics/android/Crashlytics$5;

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics$5;->val$latch:Lcom/crashlytics/android/Crashlytics$OptInLatch;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/Crashlytics$OptInLatch;->setOptIn(Z)V

    .line 1016
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1017
    return-void
.end method
