<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SqlDemoProj.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Categories of skills:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="TopSqlDataSource" DataTextField="Skill" DataValueField="Skill" AppendDataBoundItems="True">
            <asp:ListItem Value="" Text="Select a skill" />
            </asp:DropDownList>
            <asp:SqlDataSource ID="TopSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:rds.myskillsserver.myAWSSkillsDataBase %>" SelectCommand="SELECT DISTINCT [Skill] FROM [myAWSSkillsTable]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourcexx" ForeColor="#333333" GridLines="None" DataKeyNames="StaffID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="StaffID" HeaderText="StaffID" SortExpression="StaffID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Skill" HeaderText="Skill" SortExpression="Skill" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcexx" runat="server" ConnectionString="<%$ ConnectionStrings:rds.myskillsserver.myAWSSkillsDataBase %>" SelectCommand="SELECT [StaffID], [Firstname], [Surname], [Age], [Gender], [Skill] FROM [myAWSSkillsTable] WHERE ([Skill] = @Skill)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="NULL" Name="Skill" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceSkillsList" ForeColor="#333333" GridLines="None" DataKeyNames="StaffID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="StaffID" HeaderText="StaffID" SortExpression="StaffID" />
                    <asp:BoundField DataField="Skill" HeaderText="Skill" SortExpression="Skill" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceSkillsList" runat="server" ConnectionString="<%$ ConnectionStrings:rds.myskillsserver.myAWSSkillsDataBase %>" SelectCommand="SELECT [StaffID], [Skill] FROM [myAWSSkillsTable] WHERE ([StaffID] = @StaffID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="StaffID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            Individual Skills:&nbsp; <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcePerson" DataTextField="StaffID" DataValueField="StaffID" AppendDataBoundItems="True">
            <asp:ListItem Value="" Text="Select a Staff ID" />
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourcePerson" runat="server" ConnectionString="<%$ ConnectionStrings:rds.myskillsserver.myAWSSkillsDataBase %>" SelectCommand="SELECT DISTINCT [StaffID] FROM [myAWSSkillsTable]">
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSourcebbb" Height="50px" Width="125px" DataKeyNames="UniqueID">
                <Fields>
                    <asp:BoundField DataField="StaffID" HeaderText="StaffID" SortExpression="StaffID" />
                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Skill" HeaderText="Skill" SortExpression="Skill" />
                    <asp:BoundField DataField="UniqueID" HeaderText="UniqueID" InsertVisible="False" ReadOnly="True" SortExpression="UniqueID" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <asp:SqlDataSource ID="SqlDataSourcebbb" runat="server" ConnectionString="<%$ ConnectionStrings:rds.myskillsserver.myAWSSkillsDataBase %>" SelectCommand="SELECT [StaffID], [UniqueID], [Firstname], [Surname], [Age], [Gender], [Skill] FROM [myAWSSkillsTable] WHERE ([StaffID] = @StaffID)" DeleteCommand="DELETE FROM [myAWSSkillsTable] WHERE [UniqueID] = @UniqueID" InsertCommand="INSERT INTO [myAWSSkillsTable] ([StaffID], [Firstname], [Surname], [Age], [Gender], [Skill]) VALUES (@StaffID, @Firstname, @Surname, @Age, @Gender, @Skill)" UpdateCommand="UPDATE [myAWSSkillsTable] SET [StaffID] = @StaffID, [Firstname] = @Firstname, [Surname] = @Surname, [Age] = @Age, [Gender] = @Gender, [Skill] = @Skill WHERE [UniqueID] = @UniqueID">
                <DeleteParameters>
                    <asp:Parameter Name="UniqueID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StaffID" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Skill" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="StaffID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StaffID" Type="String" />
                    <asp:Parameter Name="Firstname" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Skill" Type="String" />
                    <asp:Parameter Name="UniqueID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
