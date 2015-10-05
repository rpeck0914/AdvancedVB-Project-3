Public Class TabSimulationForm
    Inherits System.Web.UI.Page

    Private FirstNumber As Integer
    Private SecondNumber As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack Then
            TabPanel.Visible = True
        Else
            CalendarPanel.Visible = False
            TablePanel.Visible = False
            ImagePanel.Visible = False
            CalculatorPanel.Visible = False
        End If
    End Sub

    Protected Sub CalendarButton_Click(sender As Object, e As EventArgs)
        SetActivePanel(CalendarButton.Text)
    End Sub

    Protected Sub TableButton_Click(sender As Object, e As EventArgs)
        SetActivePanel(TableButton.Text)
    End Sub

    Protected Sub ImageButton_Click(sender As Object, e As EventArgs)
        SetActivePanel(ImageButton.Text)
    End Sub

    Protected Sub CalculatorButton_Click(sender As Object, e As EventArgs)
        SetActivePanel(CalculatorButton.Text)
    End Sub

    Public Sub SetActivePanel(ButtonName As String)
        CalendarPanel.Visible = False
        TablePanel.Visible = False
        ImagePanel.Visible = False
        CalculatorPanel.Visible = False

        Select Case ButtonName
            Case Is = "Calendar"
                CalendarPanel.Visible = True
            Case Is = "Table"
                TablePanel.Visible = True
            Case Is = "Image"
                ImagePanel.Visible = True
            Case Is = "Calculator"
                CalculatorPanel.Visible = True
            Case Else
                ErrorLabel.Text = "Error, No Button Was Clicked"
        End Select

    End Sub

    Protected Sub AddButton_Click(sender As Object, e As EventArgs)
        If ValidateInput() Then
            OutputLabel.Text = (FirstNumber + SecondNumber).ToString()
        End If
    End Sub

    Protected Sub SubtractButton_Click(sender As Object, e As EventArgs)
        If ValidateInput() Then
            OutputLabel.Text = (FirstNumber - SecondNumber).ToString()
        End If
    End Sub

    Protected Sub MultiplyButton_Click(sender As Object, e As EventArgs)
        If ValidateInput() Then
            OutputLabel.Text = (FirstNumber * SecondNumber).ToString()
        End If
    End Sub

    Protected Sub DivideButton_Click(sender As Object, e As EventArgs)
        If ValidateInput() Then
            OutputLabel.Text = (FirstNumber / SecondNumber).ToString()
        End If
    End Sub

    Public Function ValidateInput()
        Try
            FirstNumber = Integer.Parse(FirstNumberTextBox.Text)
            Try
                SecondNumber = Integer.Parse(SecondNumberTextBox.Text)
                Return True
            Catch ex As Exception
                OutputLabel.Text = ex.Message
            End Try
        Catch ex As Exception
            OutputLabel.Text = ex.Message
        End Try
        Return False
    End Function
End Class